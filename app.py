from flask import Flask, render_template


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=False)

    @app.route("/")
    def home():
        return render_template("home.html", title="Home")

    @app.route("/about")
    def about():
        return render_template("about.html", title="About")

    @app.route("/information")
    def information():
        return render_template("information.html", title="Information")

    return app


# Expose a module-level 'app' for WSGI servers (gunicorn)
app = create_app()


if __name__ == "__main__":
    app.run(debug=True)
