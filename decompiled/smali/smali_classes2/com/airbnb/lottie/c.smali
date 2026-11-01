.class public final synthetic Lcom/airbnb/lottie/c;
.super Ljava/lang/Object;

# interfaces
.implements Lt4/d;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
