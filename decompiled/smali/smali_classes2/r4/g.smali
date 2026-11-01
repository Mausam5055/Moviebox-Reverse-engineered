.class public Lr4/g;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lq4/b;

.field private final c:Lq4/b;

.field private final d:Lq4/n;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq4/b;Lq4/b;Lq4/n;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/g;->b:Lq4/b;

    iput-object p3, p0, Lr4/g;->c:Lq4/b;

    iput-object p4, p0, Lr4/g;->d:Lq4/n;

    iput-boolean p5, p0, Lr4/g;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    new-instance p2, Lm4/p;

    invoke-direct {p2, p1, p3, p0}, Lm4/p;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/g;)V

    return-object p2
.end method

.method public b()Lq4/b;
    .locals 1

    iget-object v0, p0, Lr4/g;->b:Lq4/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lq4/b;
    .locals 1

    iget-object v0, p0, Lr4/g;->c:Lq4/b;

    return-object v0
.end method

.method public e()Lq4/n;
    .locals 1

    iget-object v0, p0, Lr4/g;->d:Lq4/n;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lr4/g;->e:Z

    return v0
.end method
