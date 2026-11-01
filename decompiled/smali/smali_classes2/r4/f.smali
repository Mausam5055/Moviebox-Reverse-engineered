.class public Lr4/f;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lq4/o;

.field private final c:Lq4/o;

.field private final d:Lq4/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq4/o;Lq4/o;Lq4/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/f;->b:Lq4/o;

    iput-object p3, p0, Lr4/f;->c:Lq4/o;

    iput-object p4, p0, Lr4/f;->d:Lq4/b;

    iput-boolean p5, p0, Lr4/f;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    new-instance p2, Lm4/o;

    invoke-direct {p2, p1, p3, p0}, Lm4/o;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/f;)V

    return-object p2
.end method

.method public b()Lq4/b;
    .locals 1

    iget-object v0, p0, Lr4/f;->d:Lq4/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lq4/o;
    .locals 1

    iget-object v0, p0, Lr4/f;->b:Lq4/o;

    return-object v0
.end method

.method public e()Lq4/o;
    .locals 1

    iget-object v0, p0, Lr4/f;->c:Lq4/o;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lr4/f;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/f;->b:Lq4/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr4/f;->c:Lq4/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
