.class Lcom/bytedance/sdk/component/Sj$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Sj;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj$1;->Sj:Lcom/bytedance/sdk/component/Sj;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$1;->Sj:Lcom/bytedance/sdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj;->Sj()V

    return-void
.end method
