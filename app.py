from flask import*
import pymysql
app=Flask(__name__)
@app.route("/")
def Homepage():
    # connect to db
    connection=pymysql.connect(host='localhost',user='root',password='',database='jumiaa')
    sql="SELECT * FROM `products` WHERE `product_category` ='phones'  "
    sql1="SELECT * FROM `products` WHERE `product_category` ='electronics'  "
    sql2="SELECT * FROM `products` WHERE `product_category` ='beauty'  "

    # you need to have a  cursor
    # cursor is used to run /execute above sql
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()

    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)


    # fetch all phone rows
    phones=cursor.fetchall()
    electronics=cursor1.fetchall()
    beauty=cursor2.fetchall()
    return render_template("index.html", allphones=phones, electronics=electronics,beauty=beauty)
# route for single iitem
@app.route("/single/<product_id>")
def singleitem(product_id):
    # connection
     connection=pymysql.connect(host='localhost',user='root',password='',database='jumiaa')
    #  create sql query
     sql = "SELECT * FROM `products` WHERE `product_id`=%s"
    #  create a cursor
     cursor=connection.cursor()
    #  execute
     cursor.execute(sql,product_id)
    #  get the singlw product
     product = cursor.fetchone()
     return render_template("single.html", product=product)

# upload products
@app.route("/upload", methods=['POST','GET'])
def Upload():
    if request.method =='POST':
        # user can add the products
        product_name= request.form['product_name']
        product_desc= request.form['product_desc']
        product_cost= request.form['product_cost']
        product_category= request.form['product_category']
        product_image_name= request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)
        # connect to db
        connection=pymysql.connect(host='localhost',user='root',password='',database='jumiaa')
        # create a cursor
        cursor=connection.cursor()

        sql="INSERT INTO products(product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data =(product_name,product_desc,product_cost,product_category,product_image_name.filename)
        # execute
        cursor.execute(sql,data)
        # save changes
        connection.commit()


        return render_template("upload.html",message="product added successfully")

    else:
        return render_template("upload.html",error="please add a product")
    
    # fashion route
    # helps you to see all the fashions
@app.route("/fashion")
def Fashion():
    # connect to db
    connection=pymysql.connect(host='localhost',user='root',password='',database='jumiaa')
    sql="SELECT * FROM `products` WHERE `product_category` ='dresses'  "
    sql1="SELECT * FROM `products` WHERE `product_category` ='handbags'  "
    sql2="SELECT * FROM `products` WHERE `product_category` ='cap'  "
    sql3="SELECT * FROM `products` WHERE `product_category` ='socks'  "
    sql4="SELECT * FROM `products` WHERE `product_category` ='belt'  "

    # you need to have a  cursor
    # cursor is used to run /execute above sql
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()
    cursor3=connection.cursor()
    cursor4=connection.cursor()


    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)


    # fetch all phone rows
    dresses=cursor.fetchall()
    handbags=cursor1.fetchall()
    cap=cursor2.fetchall()
    socks=cursor3.fetchall()
    belt=cursor4.fetchall()
    return render_template("fashion.html" , dresses=dresses, handbags= handbags,cap=cap,socks=socks,belt=belt)
# a route to upload Fashion

@app.route("/uploadfashion", methods=['POST','GET'])
def Uploadfashion():
    if request.method =='POST':
        # user can add the products
        product_name= request.form['product_name']
        product_desc= request.form['product_desc']
        product_cost= request.form['product_cost']
        product_category= request.form['product_category']
        product_image_name= request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)
        # connect to db
        connection=pymysql.connect(host='localhost',user='root',password='',database='jumiaa')
        # create a cursor
        cursor=connection.cursor()

        sql="INSERT INTO products(product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data =(product_name,product_desc,product_cost,product_category,product_image_name.filename)
        # execute
        cursor.execute(sql,data)
        # save changes
        connection.commit()


        return render_template("uploadfashion.html",message="fashion added successfully")

    else:
        return render_template("uploadfashion.html",error="please add a fashion")

# user registration




    
@app.route("/about")
def About():
    return"this is about page"
@app.route("/register")
def Register():
    return"this is register page"
@app.route("/login")
def Login():
    return"this is login page"
@app.route("/logout")
def Logout():
    return"this is the logout page"


if __name__=="__main__":
    app.run(debug=True,port=5001)