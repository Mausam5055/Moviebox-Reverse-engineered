.class public Lr4/e;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/GradientType;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lq4/c;

.field private final d:Lq4/d;

.field private final e:Lq4/f;

.field private final f:Lq4/f;

.field private final g:Ljava/lang/String;

.field private final h:Lq4/b;

.field private final i:Lq4/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lq4/c;Lq4/d;Lq4/f;Lq4/f;Lq4/b;Lq4/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lr4/e;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lr4/e;->c:Lq4/c;

    iput-object p5, p0, Lr4/e;->d:Lq4/d;

    iput-object p6, p0, Lr4/e;->e:Lq4/f;

    iput-object p7, p0, Lr4/e;->f:Lq4/f;

    iput-object p1, p0, Lr4/e;->g:Ljava/lang/String;

    iput-object p8, p0, Lr4/e;->h:Lq4/b;

    iput-object p9, p0, Lr4/e;->i:Lq4/b;

    iput-boolean p10, p0, Lr4/e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 1

    new-instance v0, Lm4/h;

    invoke-direct {v0, p1, p2, p3, p0}, Lm4/h;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;Lr4/e;)V

    return-object v0
.end method

.method public b()Lq4/f;
    .locals 1

    iget-object v0, p0, Lr4/e;->f:Lq4/f;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object v0, p0, Lr4/e;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Lq4/c;
    .locals 1

    iget-object v0, p0, Lr4/e;->c:Lq4/c;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    iget-object v0, p0, Lr4/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lq4/d;
    .locals 1

    iget-object v0, p0, Lr4/e;->d:Lq4/d;

    return-object v0
.end method

.method public h()Lq4/f;
    .locals 1

    iget-object v0, p0, Lr4/e;->e:Lq4/f;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lr4/e;->j:Z

    return v0
.end method
