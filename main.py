from fastapi import FastAPI
import asyncio
from time import perf_counter
app = FastAPI()
@app.get('/sleep')
async def sleep(time: int) -> str:
    """
    wait for at least `time` seconds
    """
    start = perf_counter()
    await asyncio.sleep(time)
    return f'took {perf_counter() - start:.4} seconds'

