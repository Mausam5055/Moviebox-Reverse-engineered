.class public final Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/comment/ui/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;ZILjava/lang/Object;)Lcom/transsion/postdetail/comment/ui/CommentListFragment;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;->a(Z)Lcom/transsion/postdetail/comment/ui/CommentListFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Lcom/transsion/postdetail/comment/ui/CommentListFragment;
    .locals 3

    new-instance v0, Lcom/transsion/postdetail/comment/ui/CommentListFragment;

    invoke-direct {v0}, Lcom/transsion/postdetail/comment/ui/CommentListFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_embed_in_parent"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
