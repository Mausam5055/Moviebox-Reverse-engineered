.class public final synthetic Lcom/transsion/postdetail/ui/fragment/s0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/s0;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/s0;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;->a(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
