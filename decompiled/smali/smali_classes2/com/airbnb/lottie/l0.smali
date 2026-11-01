.class public Lcom/airbnb/lottie/l0;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/l0;->a:I

    iput p2, p0, Lcom/airbnb/lottie/l0;->b:I

    iput-object p3, p0, Lcom/airbnb/lottie/l0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/l0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/airbnb/lottie/l0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(F)Lcom/airbnb/lottie/l0;
    .locals 7

    new-instance v6, Lcom/airbnb/lottie/l0;

    iget v0, p0, Lcom/airbnb/lottie/l0;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v1, v0

    iget v0, p0, Lcom/airbnb/lottie/l0;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/airbnb/lottie/l0;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/l0;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/airbnb/lottie/l0;->e:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/l0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/airbnb/lottie/l0;->f:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget v0, v6, Lcom/airbnb/lottie/l0;->a:I

    iget v1, v6, Lcom/airbnb/lottie/l0;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/airbnb/lottie/l0;->g(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v6
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/l0;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/l0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/l0;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/l0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/l0;->a:I

    return v0
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/l0;->f:Landroid/graphics/Bitmap;

    return-void
.end method
