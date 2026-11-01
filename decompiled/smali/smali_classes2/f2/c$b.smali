.class Lf2/c$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lf2/c;


# direct methods
.method private constructor <init>(Lf2/c;)V
    .locals 0

    iput-object p1, p0, Lf2/c$b;->a:Lf2/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf2/c;Lf2/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf2/c$b;-><init>(Lf2/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lf2/c$b;->a:Lf2/c;

    invoke-static {p1}, Lf2/c;->a(Lf2/c;)V

    :cond_0
    return-void
.end method
