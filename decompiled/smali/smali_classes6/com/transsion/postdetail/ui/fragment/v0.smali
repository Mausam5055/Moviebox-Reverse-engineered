.class public final synthetic Lcom/transsion/postdetail/ui/fragment/v0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/v0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/v0;->b:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/v0;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/v0;->b:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$setSubtitle$1$1$1;->d(Ljava/util/List;Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
