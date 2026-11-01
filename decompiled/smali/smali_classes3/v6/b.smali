.class public final synthetic Lv6/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/b;->a:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv6/b;->a:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    invoke-static {v0}, Lv6/e;->i(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    return-void
.end method
