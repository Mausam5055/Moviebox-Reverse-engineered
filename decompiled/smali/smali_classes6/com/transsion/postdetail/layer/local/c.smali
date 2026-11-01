.class public final synthetic Lcom/transsion/postdetail/layer/local/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/c;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/c;->a:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->Y(Landroidx/fragment/app/Fragment;)Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v0

    return-object v0
.end method
