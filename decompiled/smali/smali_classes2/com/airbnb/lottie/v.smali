.class public final synthetic Lcom/airbnb/lottie/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$a;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/v;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/v;->b:I

    iput p3, p0, Lcom/airbnb/lottie/v;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/h;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/v;->a:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/v;->b:I

    iget v2, p0, Lcom/airbnb/lottie/v;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/airbnb/lottie/LottieDrawable;->j(Lcom/airbnb/lottie/LottieDrawable;IILcom/airbnb/lottie/h;)V

    return-void
.end method
