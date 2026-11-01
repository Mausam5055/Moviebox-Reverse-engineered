.class public final synthetic Lhq/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhq/c;->a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhq/c;->a:Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;

    check-cast p1, Lcom/transsion/room/sub/bean/likes/GetUgcVideoLikesBean;

    invoke-static {v0, p1}, Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;->m0(Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;Lcom/transsion/room/sub/bean/likes/GetUgcVideoLikesBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
