.class public final synthetic Le7/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le7/d;


# direct methods
.method public synthetic constructor <init>(Le7/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/c;->a:Le7/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le7/c;->a:Le7/d;

    invoke-static {v0, p1}, Le7/d;->b(Le7/d;Landroid/view/View;)V

    return-void
.end method
