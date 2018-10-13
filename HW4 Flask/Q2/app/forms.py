from flask_wtf import FlaskForm
from wtforms import FloatField, RadioField, SubmitField
from wtforms.validators import DataRequired, InputRequired

class OperatorForm(FlaskForm):
    firstNumber = FloatField('First number:', validators=[InputRequired()])
    secondNumber = FloatField('Second number:', validators=[InputRequired()])
    operator = RadioField('Operator', choices = [('add','Add'),('sub','Subtract'),('mul','Multiply'),('div','Divide')],validators=[DataRequired()])
    submit = SubmitField('Submit')
