.class public abstract Landroidx/databinding/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroidx/databinding/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    sput-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/databinding/g;->b(Landroid/view/View;Landroidx/databinding/f;)Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public static b(Landroid/view/View;Landroidx/databinding/f;)Landroidx/databinding/ViewDataBinding;
    .locals 3

    invoke-static {p0}, Landroidx/databinding/g;->c(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    invoke-virtual {v2, v1}, Landroidx/databinding/e;->c(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/e;

    invoke-virtual {v0, p1, p0, v1}, Landroidx/databinding/e;->b(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View is not a binding layout. Tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View is not a binding layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->g(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    const/4 p0, 0x0

    return-object p0
.end method
