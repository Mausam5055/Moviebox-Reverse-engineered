.class public final synthetic Lcom/transsion/postdetail/ui/fragment/z1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lso/m0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lso/m0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/z1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/z1;->b:Lso/m0;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/fragment/z1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/ui/fragment/z1;->d:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/z1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/z1;->b:Lso/m0;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/z1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/z1;->d:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->t0(Ljava/lang/String;Lso/m0;Ljava/lang/String;Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V

    return-void
.end method
