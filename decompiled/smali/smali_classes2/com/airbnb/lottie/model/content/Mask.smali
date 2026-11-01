.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final b:Lq4/h;

.field private final c:Lq4/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lq4/h;Lq4/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->b:Lq4/h;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->c:Lq4/d;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->a:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public b()Lq4/h;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->b:Lq4/h;

    return-object v0
.end method

.method public c()Lq4/d;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->c:Lq4/d;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/Mask;->d:Z

    return v0
.end method
