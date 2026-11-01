.class public final synthetic Lcom/transsion/videodetail/music/ui/q0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/q0;->a:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/q0;->a:Landroidx/appcompat/widget/AppCompatImageView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;->d0(Landroidx/appcompat/widget/AppCompatImageView;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
