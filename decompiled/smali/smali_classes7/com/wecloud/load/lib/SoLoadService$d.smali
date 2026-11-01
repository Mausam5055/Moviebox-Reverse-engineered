.class public final Lcom/wecloud/load/lib/SoLoadService$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wecloud/load/lib/NativeClass$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wecloud/load/lib/SoLoadService;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$d;->a:Lcom/wecloud/load/lib/SoLoadService;

    iput-object p2, p0, Lcom/wecloud/load/lib/SoLoadService$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitCallback(I)V
    .locals 2

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$d;->a:Lcom/wecloud/load/lib/SoLoadService;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$d;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->l(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;I)V

    return-void
.end method

.method public onResultCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$d;->a:Lcom/wecloud/load/lib/SoLoadService;

    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$d;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/wecloud/load/lib/SoLoadService;->m(Lcom/wecloud/load/lib/SoLoadService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
