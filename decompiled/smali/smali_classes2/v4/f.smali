.class public Lv4/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/airbnb/lottie/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv4/e;

    invoke-direct {v0}, Lv4/e;-><init>()V

    sput-object v0, Lv4/f;->a:Lcom/airbnb/lottie/n0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lv4/f;->a:Lcom/airbnb/lottie/n0;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/n0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lv4/f;->a:Lcom/airbnb/lottie/n0;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/n0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lv4/f;->a:Lcom/airbnb/lottie/n0;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/n0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lv4/f;->a:Lcom/airbnb/lottie/n0;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/n0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
