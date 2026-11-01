.class abstract synthetic Lcom/cloud/hisavana/sdk/t2$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/t2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->values()[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cloud/hisavana/sdk/t2$b;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/cloud/hisavana/sdk/t2$b;->b:[I

    sget-object v3, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/cloud/hisavana/sdk/t2$b;->b:[I

    sget-object v3, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->values()[Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/cloud/hisavana/sdk/t2$b;->a:[I

    :try_start_3
    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/cloud/hisavana/sdk/t2$b;->a:[I

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
