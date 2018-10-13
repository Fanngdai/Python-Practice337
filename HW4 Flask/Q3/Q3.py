from Tkinter import *
import tkMessageBox

root = Tk()
root.geometry("501x650")
root.title("CSE 337 Drawing Program")
canvas = Canvas(root, highlightthickness=1, highlightbackground="black", width=500, height=400)

shape = IntVar()
shape.set(1)
s = 1
color = StringVar()
color.set(None)
c = "black"
stack = []

def changeShape():
    global s
    s = shape.get()

def changeColor():
    global c
    if c == color.get():
        color.set(None)
        c = "black"
    else:
        c = color.get()

def makeShape():
    try:
        p1 = float(param1Text.get())
        p2 = float(param2Text.get())
        p3 = float(param3Text.get())
        p4 = float(param4Text.get())
        canvas.update()

        # No width. Default value is 1
        if len(widthText.get()) == 0:
            w = 1
        else:
            w = float(widthText.get())

        if p1<0 or p1>500 or p3<0 or p3>500 or p2<0 or p2>400 or p4<0 or p4>400:
            tkMessageBox.showwarning("Warning","Invalid Location")
        elif w < -1:
            tkMessageBox.showwarning("Warning","Invalid Width")
        else:
            if s == 1:
                stack.append(canvas.create_rectangle(p1, p2, p3, p4, fill=c, outline=c, width=w))
            elif s == 2:
                stack.append(canvas.create_line(p1, p2, p3, p4, fill=c, width=w))
            elif s == 3:
                stack.append(canvas.create_oval(p1, p2, p3, p4, fill=c, outline=c, width=w))

    except TclError:
        tkMessageBox.showwarning("Warning","Invalid Size")
    except:
        tkMessageBox.showwarning("Warning","Invalid Something")

# Put shape on canvas
def buttonPressed(evt):
    if evt.widget == canvas:
        makeShape()

def removeShape():
    if not stack:
        tkMessageBox.showwarning("Warning","No Shape on Screen")
    else:
        canvas.delete(stack.pop())

param1  = Label(root, text="Param 1")
param1Text  = Entry(root, width=40)
param2  = Label(root, text="Param 2")
param2Text  = Entry(root, width=40)
param3  = Label(root, text="Param 3")
param3Text  = Entry(root, width=40)
param4  = Label(root, text="Param 4")
param4Text  = Entry(root, width=40)
width  = Label(root, text="Width")
widthText  = Entry(root, width=40)

# tie radio buttons together with the same variable
rectangle=Radiobutton(root,text="Rectangle",variable=shape,value=1,command=changeShape)
line=Radiobutton(root,text="Line",variable=shape,value=2,command=changeShape)
oval=Radiobutton(root,text="Oval",variable=shape,value=3,command=changeShape)

red=Radiobutton(root,text="Red",variable=color,value="red",command=changeColor)
green=Radiobutton(root,text="Green",variable=color,value="green",command=changeColor)
blue=Radiobutton(root,text="Blue",variable=color,value="blue",command=changeColor)

deleteShape = Button(root, text="Delete Recent Shape", command=removeShape)
root.bind("<Button-1>", buttonPressed)

canvas.grid(row=0, rowspan=1, column=0, columnspan=5)
param1.grid(row=2, column=0)
param2.grid(row=3, column=0)
param3.grid(row=4, column=0)
param4.grid(row=5, column=0)
width.grid(row=6, column=0)
param1Text.grid(row=2, column=1, columnspan=3)
param2Text.grid(row=3, column=1, columnspan=3)
param3Text.grid(row=4, column=1, columnspan=3)
param4Text.grid(row=5, column=1, columnspan=3)
widthText.grid(row=6, column=1, columnspan=3)

rectangle.grid(row=7, column=1, sticky='w')
line.grid(row=8, column=1, sticky='w')
oval.grid(row=9, column=1, sticky='w')
red.grid(row=7, column=2, sticky='w')
green.grid(row=8, column=2, sticky='w')
blue.grid(row=9, column=2, sticky='w')
deleteShape.grid(row=10, column=1, sticky='w')

root.mainloop()
