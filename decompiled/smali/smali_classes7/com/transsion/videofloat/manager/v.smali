.class public final synthetic Lcom/transsion/videofloat/manager/v;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic c:Lpx/a;

.field public final synthetic d:Lcom/transsion/videofloat/bean/FloatActionType;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/v;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    iput-object p2, p0, Lcom/transsion/videofloat/manager/v;->b:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/transsion/videofloat/manager/v;->c:Lpx/a;

    iput-object p4, p0, Lcom/transsion/videofloat/manager/v;->d:Lcom/transsion/videofloat/bean/FloatActionType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/videofloat/manager/v;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/v;->b:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/v;->c:Lpx/a;

    iget-object v3, p0, Lcom/transsion/videofloat/manager/v;->d:Lcom/transsion/videofloat/bean/FloatActionType;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->l(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
