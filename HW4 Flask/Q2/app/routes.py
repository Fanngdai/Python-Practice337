from flask import render_template, make_response, flash, redirect, url_for, request
from app import app
from app.forms import OperatorForm

@app.route('/')
@app.route('/index',methods=['POST', 'GET'])
def index():
    form = OperatorForm()
    if request.method=='POST':
        first = request.form.get('firstNumber')
        second = request.form.get('secondNumber')
        operator = request.form.get('operator')
        if form.validate()==False:
            return redirect(url_for('result', operator='error'))
        else:
            resp = make_response(redirect(url_for('result', operator=operator)))
            resp.set_cookie('firstNumber',first)
            resp.set_cookie('secondNumber',second)
            return resp
    # elif request.method=='GET':
    return render_template('index.html', title='Operator', form=form)

# Operator always has one of the following values.
def calculate(operator, first, second):
    if operator=='add':
        total=first+second
    elif operator=='sub':
        total=first-second
    elif operator=='mul':
        total=first*second
    elif operator=='div':
        total=first/second
    return total

@app.route('/result/<operator>', methods=['POST', 'GET'])
def result(operator):
    if operator=='error':
        total="WOAH! Look an error page!"
    else:
        first = float(request.cookies.get('firstNumber'))
        second = float(request.cookies.get('secondNumber'))
        total = calculate(operator, first, second)
    return render_template('result.html', title='result', total=total)

@app.errorhandler(403)
def forbidden_error(error):
    return render_template('403.html'), 403

@app.errorhandler(404)
def not_found_error(error):
    return render_template('404.html'), 404

@app.errorhandler(500)
def internal_error(error):
    return render_template('500.html'), 500
