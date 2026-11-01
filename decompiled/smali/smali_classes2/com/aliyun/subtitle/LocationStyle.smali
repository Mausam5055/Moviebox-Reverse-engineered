.class public Lcom/aliyun/subtitle/LocationStyle;
.super Ljava/lang/Object;


# static fields
.field public static final Location_Bottom:I = 0x8

.field public static final Location_Center:I = 0x40

.field public static final Location_CenterH:I = 0x10

.field public static final Location_CenterV:I = 0x20

.field public static final Location_Left:I = 0x1

.field public static final Location_Right:I = 0x4

.field public static final Location_Top:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLocation(Landroid/widget/RelativeLayout$LayoutParams;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout$LayoutParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "extra_location"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    and-int/lit8 p1, p2, 0x8

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    and-int/lit8 p1, p2, 0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_2
    and-int/lit8 p1, p2, 0x2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_3
    and-int/lit8 p1, p2, 0x4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_4
    and-int/lit8 p1, p2, 0x10

    const/16 v0, 0x10

    if-ne p1, v0, :cond_5

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_5
    and-int/lit8 p1, p2, 0x20

    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_6
    const/16 p1, 0x40

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_7

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_7
    return-void
.end method
