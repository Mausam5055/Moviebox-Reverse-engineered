.class public final synthetic Lpw/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lpw/n;->b:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpw/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lpw/n;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->d0(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
