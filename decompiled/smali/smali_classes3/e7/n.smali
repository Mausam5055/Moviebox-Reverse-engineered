.class public Le7/n;
.super Landroid/view/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/n$a;
    }
.end annotation


# instance fields
.field private a:Le7/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Le7/n$a;

    invoke-direct {v0}, Le7/n$a;-><init>()V

    invoke-direct {p0, p1, v0}, Le7/n;-><init>(Landroid/content/Context;Le7/n$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Le7/n$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Le7/n;->a:Le7/n$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Le7/n;->a:Le7/n$a;

    invoke-virtual {v0}, Le7/n$a;->a()Z

    move-result v0

    return v0
.end method
