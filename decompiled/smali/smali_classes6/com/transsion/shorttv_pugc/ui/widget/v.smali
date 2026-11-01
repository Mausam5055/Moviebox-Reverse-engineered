.class public final synthetic Lcom/transsion/shorttv_pugc/ui/widget/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/v;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/v;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    return-void
.end method
