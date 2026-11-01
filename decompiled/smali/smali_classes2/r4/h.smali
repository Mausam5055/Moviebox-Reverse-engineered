.class public Lr4/h;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lq4/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq4/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/h;->b:Lq4/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    new-instance p2, Lm4/q;

    invoke-direct {p2, p1, p3, p0}, Lm4/q;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/h;)V

    return-object p2
.end method

.method public b()Lq4/o;
    .locals 1

    iget-object v0, p0, Lr4/h;->b:Lq4/o;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/h;->a:Ljava/lang/String;

    return-object v0
.end method
