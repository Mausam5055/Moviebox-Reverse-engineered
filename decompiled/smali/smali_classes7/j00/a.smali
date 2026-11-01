.class public abstract Lj00/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lj00/a;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/content/Context;)Lj00/c;
.end method

.method public abstract c(Landroid/content/Context;I)Lj00/d;
.end method

.method public d(Landroid/content/Context;I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lj00/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public final f(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lj00/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lj00/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
