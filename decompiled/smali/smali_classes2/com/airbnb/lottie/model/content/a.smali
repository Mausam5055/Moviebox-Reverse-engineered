.class public Lcom/airbnb/lottie/model/content/a;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/GradientType;

.field private final c:Lq4/c;

.field private final d:Lq4/d;

.field private final e:Lq4/f;

.field private final f:Lq4/f;

.field private final g:Lq4/b;

.field private final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final j:F

.field private final k:Ljava/util/List;

.field private final l:Lq4/b;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lq4/c;Lq4/d;Lq4/f;Lq4/f;Lq4/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lq4/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/a;->c:Lq4/c;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/a;->d:Lq4/d;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/a;->e:Lq4/f;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/a;->f:Lq4/f;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/a;->g:Lq4/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    iput p10, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    iput-object p11, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    iput-object p12, p0, Lcom/airbnb/lottie/model/content/a;->l:Lq4/b;

    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    new-instance p2, Lm4/i;

    invoke-direct {p2, p1, p3, p0}, Lm4/i;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V

    return-object p2
.end method

.method public b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public c()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->l:Lq4/b;

    return-object v0
.end method

.method public d()Lq4/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->f:Lq4/f;

    return-object v0
.end method

.method public e()Lq4/c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->c:Lq4/c;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lq4/d;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->d:Lq4/d;

    return-object v0
.end method

.method public l()Lq4/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->e:Lq4/f;

    return-object v0
.end method

.method public m()Lq4/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->g:Lq4/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    return v0
.end method
