from fastapi import APIRouter

router = APIRouter(
    prefix="/api/v1/onboarding",
    tags=["onboarding"]
)

@router.get("/")
async def get_onboarding_message():
    return {"message": "This is the onboarding API!"}
