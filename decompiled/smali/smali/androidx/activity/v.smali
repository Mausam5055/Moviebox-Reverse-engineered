.class public final synthetic Landroidx/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/v;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/v;->a:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$a;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
