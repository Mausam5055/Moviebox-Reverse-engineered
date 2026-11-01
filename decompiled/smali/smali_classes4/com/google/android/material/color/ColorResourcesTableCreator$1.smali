.class Lcom/google/android/material/color/ColorResourcesTableCreator$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/material/color/a;Lcom/google/android/material/color/a;)I
    .locals 0

    invoke-static {p1}, Lcom/google/android/material/color/a;->a(Lcom/google/android/material/color/a;)S

    move-result p1

    invoke-static {p2}, Lcom/google/android/material/color/a;->a(Lcom/google/android/material/color/a;)S

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;->compare(Lcom/google/android/material/color/a;Lcom/google/android/material/color/a;)I

    move-result p1

    return p1
.end method
