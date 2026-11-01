.class public final Landroidx/activity/w$a;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/w;->a(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/u;ZLkotlin/jvm/functions/Function1;)Landroidx/activity/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p2, p0, Landroidx/activity/w$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/w$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
