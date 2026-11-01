.class public final Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/sP/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sj"
.end annotation


# instance fields
.field Sj:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;->Sj:Z

    return-object p0
.end method

.method public sP()Lcom/bytedance/sdk/component/sP/Sj/Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Sj$Sj;)V

    return-object v0
.end method
