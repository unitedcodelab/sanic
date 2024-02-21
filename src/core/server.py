from sanic import Sanic, text

app = Sanic("united-code-lab")


@app.get("/")
async def hello_world(request):
    return text("Hello, world!")
