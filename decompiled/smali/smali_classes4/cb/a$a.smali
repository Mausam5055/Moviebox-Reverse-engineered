.class Lcb/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcb/a;


# direct methods
.method constructor <init>(Lcb/a;)V
    .locals 0

    iput-object p1, p0, Lcb/a$a;->a:Lcb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcb/a$a;->a:Lcb/a;

    invoke-static {p2, p1}, Lcb/a;->s0(Lcb/a;Landroid/view/View;)V

    return-void
.end method
