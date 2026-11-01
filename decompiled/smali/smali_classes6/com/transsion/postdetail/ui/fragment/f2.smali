.class public final synthetic Lcom/transsion/postdetail/ui/fragment/f2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/f2;->a:Z

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/f2;->b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/f2;->a:Z

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/f2;->b:Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;->u0(ZLcom/transsion/postdetail/ui/fragment/PostDetailCommonFragment;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
