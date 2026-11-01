.class Lcom/google/android/material/chip/ChipGroup$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p1}, Lcom/google/android/material/chip/ChipGroup;->d(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->m()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    const/4 p1, 0x0

    throw p1
.end method
