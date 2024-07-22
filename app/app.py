from flask import Flask, render_template, request, redirect, url_for
import requests
import os

app = Flask(__name__)

API_HOST = os.environ.get("API_HOST", "")


@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        quote = request.form["quote"]
        author = request.form["author"]
        requests.post(
            f"{API_HOST}/api/quotes", json={"quote": quote, "author": author}
        )
     # f"http://{API_HOST}:5001/api/quotes", json={"quote": quote, "author": author}

        return redirect(url_for("index"))
    else:
        quotes = requests.get(f"{API_HOST}/api/quotes").json()
        return render_template("index.html", quotes=quotes)


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True, port=5002)
