def init_routes(app):
    @app.route('/')
    def home():
        return "Hello from automated deployment!"
