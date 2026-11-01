.class abstract Lcom/google/android/material/datepicker/p;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field protected final a:Ljava/util/LinkedHashSet;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method V(Lcom/google/android/material/datepicker/o;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method W()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method
