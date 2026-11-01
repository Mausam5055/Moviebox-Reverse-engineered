.class public Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$a;
.super Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/base/widget/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$b;-><init>()V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$b;->a:Lcom/transsion/shorttv_pugc/base/widget/shimmer/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/shorttv_pugc/base/widget/shimmer/a;->q:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic d()Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$b;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$a;->v()Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected v()Lcom/transsion/shorttv_pugc/base/widget/shimmer/a$a;
    .locals 0

    return-object p0
.end method
