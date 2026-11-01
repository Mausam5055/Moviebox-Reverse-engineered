.class Lab/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lab/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/i;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lab/i;


# direct methods
.method constructor <init>(Lab/i;F)V
    .locals 0

    iput-object p1, p0, Lab/i$b;->b:Lab/i;

    iput p2, p0, Lab/i$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lab/d;)Lab/d;
    .locals 2

    instance-of v0, p1, Lab/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lab/b;

    iget v1, p0, Lab/i$b;->a:F

    invoke-direct {v0, v1, p1}, Lab/b;-><init>(FLab/d;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
