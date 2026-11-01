.class public final synthetic Lcom/transsion/baseui/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/activity/BaseCommonActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/activity/BaseCommonActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/activity/e;->a:Lcom/transsion/baseui/activity/BaseCommonActivity;

    iput p2, p0, Lcom/transsion/baseui/activity/e;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/activity/e;->a:Lcom/transsion/baseui/activity/BaseCommonActivity;

    iget v1, p0, Lcom/transsion/baseui/activity/e;->b:I

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/baseui/activity/BaseCommonActivity;->R(Lcom/transsion/baseui/activity/BaseCommonActivity;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
