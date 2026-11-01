.class public final synthetic Lcom/cloud/hisavana/sdk/g3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/g3;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g3;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/d;->f(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
