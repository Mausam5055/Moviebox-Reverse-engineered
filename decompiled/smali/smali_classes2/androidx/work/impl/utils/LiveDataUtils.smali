.class public abstract Landroidx/work/impl/utils/LiveDataUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Ll/a;Lj4/c;)Landroidx/lifecycle/LiveData;
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/lifecycle/z;

    invoke-direct {v1}, Landroidx/lifecycle/z;-><init>()V

    new-instance v2, Landroidx/work/impl/utils/LiveDataUtils$1;

    invoke-direct {v2, p2, v0, p1, v1}, Landroidx/work/impl/utils/LiveDataUtils$1;-><init>(Lj4/c;Ljava/lang/Object;Ll/a;Landroidx/lifecycle/z;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/z;->r(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V

    return-object v1
.end method
