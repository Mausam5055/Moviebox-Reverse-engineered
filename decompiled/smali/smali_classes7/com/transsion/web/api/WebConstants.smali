.class public final Lcom/transsion/web/api/WebConstants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/web/api/WebConstants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/transsion/web/api/WebConstants;",
        "",
        "<init>",
        "()V",
        "Companion",
        "Web_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BOTTOM_MARGIN:Ljava/lang/String; = "bottom_margin"

.field public static final Companion:Lcom/transsion/web/api/WebConstants$Companion;

.field public static final EXTERNAL_BROWSER:Ljava/lang/String; = "externalBrowser"

.field public static final FIELD_DEEPLINK:Ljava/lang/String; = "deeplink"

.field public static final FIELD_EMBEDDED_FULL_WIDTH_WEB:Ljava/lang/String; = "embedded_full_width_web"

.field public static final FIELD_ITEM:Ljava/lang/String; = "item"

.field public static final FIELD_LOAD_URL_ONLY:Ljava/lang/String; = "load_url_only"

.field public static final FIELD_STATUS_BAR_HIDDEN:Ljava/lang/String; = "tool_status_bar_hidden"

.field public static final FIELD_TOOL_BAR_HIDDEN:Ljava/lang/String; = "tool_bar_hidden"

.field public static final FIELD_URL:Ljava/lang/String; = "url"

.field public static final HEADER_BG:Ljava/lang/String; = "header_GB"

.field public static final NEED_HEADER:Ljava/lang/String; = "need_header"

.field public static final PAGE_FROM:Ljava/lang/String; = "page_from"

.field public static final TAB_CODE:Ljava/lang/String; = "tab_code"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/web/api/WebConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/web/api/WebConstants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/web/api/WebConstants;->Companion:Lcom/transsion/web/api/WebConstants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
