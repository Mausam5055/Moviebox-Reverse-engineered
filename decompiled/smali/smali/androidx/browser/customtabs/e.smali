.class public final synthetic Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/CustomTabsService$a;

.field public final synthetic b:Landroidx/browser/customtabs/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/e;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iput-object p2, p0, Landroidx/browser/customtabs/e;->b:Landroidx/browser/customtabs/k;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/e;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iget-object v1, p0, Landroidx/browser/customtabs/e;->b:Landroidx/browser/customtabs/k;

    invoke-static {v0, v1}, Landroidx/browser/customtabs/CustomTabsService$a;->Z0(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/k;)V

    return-void
.end method
