.class public abstract Lcom/cloud/hisavana/sdk/l4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/c4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/l4$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/cloud/hisavana/sdk/l4$a;

.field protected volatile b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/l4;->d:I

    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/l4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/l4;->c:I

    return-void
.end method
