.class public final synthetic Le7/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Le7/i;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Le7/i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/f;->a:Le7/i;

    iput-object p2, p0, Le7/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Le7/f;->a:Le7/i;

    iget-object v1, p0, Le7/f;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Le7/i;->a(Le7/i;Landroid/content/Context;)V

    return-void
.end method
