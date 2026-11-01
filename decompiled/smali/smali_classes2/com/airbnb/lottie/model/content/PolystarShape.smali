.class public Lcom/airbnb/lottie/model/content/PolystarShape;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field private final c:Lq4/b;

.field private final d:Lq4/o;

.field private final e:Lq4/b;

.field private final f:Lq4/b;

.field private final g:Lq4/b;

.field private final h:Lq4/b;

.field private final i:Lq4/b;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lq4/b;Lq4/o;Lq4/b;Lq4/b;Lq4/b;Lq4/b;Lq4/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Lq4/b;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Lq4/o;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Lq4/b;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Lq4/b;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Lq4/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Lq4/b;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Lq4/b;

    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    iput-boolean p11, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    new-instance p2, Lm4/n;

    invoke-direct {p2, p1, p3, p0}, Lm4/n;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/PolystarShape;)V

    return-object p2
.end method

.method public b()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->f:Lq4/b;

    return-object v0
.end method

.method public c()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->h:Lq4/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->g:Lq4/b;

    return-object v0
.end method

.method public f()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->i:Lq4/b;

    return-object v0
.end method

.method public g()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->c:Lq4/b;

    return-object v0
.end method

.method public h()Lq4/o;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->d:Lq4/o;

    return-object v0
.end method

.method public i()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->e:Lq4/b;

    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/PolystarShape;->k:Z

    return v0
.end method
