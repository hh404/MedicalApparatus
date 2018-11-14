//
//  AppUIConstant.swift
//  Geaux
//
//  Created by huangjianwu on 2018/3/16.
//  Copyright © 2018年 geaux. All rights reserved.
//

import Foundation
import UIKit
import UIColor_Hex_Swift

struct AppUIConstant {
    struct Common {
        static let screenWidth = UIScreen.main.bounds.width
        static let screenHeight = UIScreen.main.bounds.height
        static var navigatorHeight :CGFloat {
            if(GDevice.isPhoneX){
                return (64 + 24.0)
            }
          return 64.0
        }
        static var statusBarHeight :CGFloat {
            if(GDevice.isPhoneX){
                return (20 + 24.0)
            }
            return 20.0
        }
        static let starSize = 30
        static let starMargin = 19
        static let avatarWidth = 64.0
        static let avatarHeight = 64.0
        static let leftMargin = 16.0
        static let appCornerRadius :CGFloat = 12.0
        static let cellHeight :CGFloat = 64.0
        static let labelLeftSpace :CGFloat = 6.0
        static let labelRightSpace :CGFloat = 6.0
        static let labelTopSpace :CGFloat = 4.0
        static let labelBottomSpace :CGFloat = 4.0
        static let tagCornerRadius :CGFloat = 2.0
        static let btnDefaultHeight :CGFloat = 50.0
    }
    struct Home {
        static let itemHeight = 62.0
        static let imageSize = 44.0
        static let imageLeftSpace = 12.0
        static let titleTopSpace = 12.0
        static let titleLeftSpace = 12.0
        static let subTitleTopSpace = 6.0
    }
    
    struct History {
        static let collectionViewLeftEdgeSpace = 16.0
        static let avartarTopSpace = 20
        static let avartarLeftSpace = 20 + 16
        static let avartarBottomSpace = 53
        static let nameLeftSpace = 20
        static let nameTopSpace = 16
        static let priceRightSpace = 16*2
        static let dateTopSpace = 10
        static let dateLeftSpace = 20
        static let requestHeightSpace = 26
        static let requestWidthSpace = 92
        static let requestBottomSpace = 2
        static let requestLeftEdgeSpace = 13
        static let requestRightEdgeSpace = 8*2 + 16*2
        static let starRatingTopSpace = 10
        static let starRatingHeightSpace = 10
        static let tagCloudTopSpace = 9
        static let tagCloudItemSpace = 4
        static let starSize = 14
    }
    
    struct JobDetail {
        static let leftMargin = 32
        static let cellHeight = 62
        static let tableViewHeadHeight = 140
        static let headAvatarLeftSpace = 36
        static let headAvatarTopSpace = 36
        static let headAvatarBottomSpace = 20
        static let headAvatarSize = 64
        static let headNameLeftSpace = 16
        static let headNameTopSpace = 40
        static let headRatingTopSpace = 15
        static let headRatingAndTextSpace = 8
        static let headRatingBottomSpace = 27
        static let headStarSize = 15
    }
    
    struct Review {
        static let starRatingTopSpace = 40
        static let starRatingLeftSpace = 78
        static let starRatingRightSpace = 78
        static let starRatingHeightSpace = 30
        static let tagCloudItemSpace = 4
        static let tipTopSpace = 74
        static let tipHeightSpace = 24
        static let optionalValueTopSpace = 39.0
        static let optionalSizeWidth = 75.0
        static let optionalSizeHeight = 75.0
        static let optionalSizeItemSpace = 24.0
        static let enterAmountTopSpace = 32.0
        static let doneBtnHeightSpace = 50.0
        static let doneBtnWidthSpace = AppUIConstant.Common.screenWidth*0.9
        static let doneBtnBottomSpace = 10.0
        
    }
    
    struct Favorite {
        static let collectionViewLeftEdgeSpace = 16
        static let collectionViewTopEdgeSpace = 24
        static let collectionViewHeight = 137.0
        static let avatarLeftSpace = 20
        static let avatarTopSpace = 20
        static let nameLeftSpace = 20
        static let nameTopSpace = 16
        static let markRightSpace = 4
        static let markSizeWidthSpace = 16
        static let markSizeHeightSpace = 16
        static let markBottomSpace = 4
        static let priceTopSpace = 6
        static let priceLeftSpace = 20
        static let likeHeightSpace = 18
        static let likeWidthSpace = 20
        static let likeTopSpace = 16
        static let likeRightEdgeSpace = 18
        static let starRatingTopSpace = 10
        static let starRatingHeightSpace = 10
        static let tagCloudTopSpace = 9
        static let tagCloudItemSpace = 4
    }
    
    struct Payment {
        static let addIconAndTextSpace :CGFloat = 8.0
        static let addIconWidth :CGFloat = 12.0
        static let cellHeight :CGFloat = 136.0
        static let addCellCornerRadius :CGFloat = 12.0
        static let cardHeight :CGFloat = 120.0
        static let cardBottomSpace :CGFloat = 16.0
        //pay
        static let starRatingTopSpace :CGFloat = 9.0
        static let rateLabelWidth :CGFloat = 22.0
        static let verticalLineWidth :CGFloat = 6.0
        static let titleLeftSpace :CGFloat = 26.0
        static let detailRightSpace :CGFloat = 32.0
        static let payHeadHeight :CGFloat = 236.0
        static let payCellHeight :CGFloat = 78.0
        static let tableGroupHeadHeight :CGFloat = 10.0
        static let closeBtnLeftSpace :CGFloat = 24.0
        static let closeBtnTopSpace :CGFloat = 28.0
        static let closeBtnSize :CGFloat = 14.0
        static let payCardBackgroundHeight :CGFloat = 120.0
        static let payCardBackgroundTopSpace :CGFloat = 4.0
        static let payCardBackgroundBottomSpace :CGFloat = 6.0
        static let cardNumberLeftSpace :CGFloat = 20.0
        static let cardNumberTopSpace :CGFloat = 18.0
        static let cardNumberBottomSpace :CGFloat = 18.0
        static let tableViewHeadHeight :CGFloat = 172.0
        static let addCardTopSpace :CGFloat = 12.0
    }
    
    struct PaymentAddNewCard {
        static let cellLeftSpace :CGFloat = 16.0
        static let titleAndTextfieldSpace :CGFloat = 24.0
        static let tAndpWidth :CGFloat = 251.0
        static let tAndpHeight :CGFloat = 28.0
        static let addBtnTop :CGFloat = 16.0
        static let addBtnHeight :CGFloat = 50.0
        static let titleWidth :CGFloat = 76.0
        static let policyLeftSpace :CGFloat = 62.0
        static let optionCheckMarkLeftSpace :CGFloat = 48.0
        static let optionCheckMarkSize :CGFloat = 24.0
    }
    
    struct Recommend {
        static let textAndIconSpace :CGFloat = 24.0
        static let iconHeight :CGFloat = 8.0
        static let iconWidth :CGFloat = 1.0
        static let textBottomSpace :CGFloat = 42.0
        static let contentTopSpace :CGFloat = 72.0
        static let contentLeftSpace :CGFloat = 32.0
        static let titleIconWidth :CGFloat = 160.0
        static let titleIconHeight :CGFloat = 200.0
        static let titleIconTopSpace :CGFloat = 24.0
        static let codeLabelTopSpace :CGFloat = 24.0
        static let codeLabelLineWidthSpace :CGFloat = 19.0
        static let codeLabelLineHeightSpace :CGFloat = 1.0
        static let codeLabelLineRightSpace :CGFloat = 6.0
        static let codeValueTopSpace :CGFloat = 12.0
        static let inviteBtnTopSpace :CGFloat = 20.0
        static let inviteBtnHeightSpace :CGFloat = 50.0
        static let inviteBtnWidthSpace :CGFloat = 247.0
        static let shareBtnTopSpace :CGFloat = 22.0
        static let shareBtnWidthSpace :CGFloat = 40.0
        static let shareBtnItemSpace :CGFloat = 40.0
        static let inviteBtnCornerRadius :CGFloat = 10.0
        //how it work
        static let containerTopSpace :CGFloat = 44.0
        static let containerRadius :CGFloat = 12.0
        static let closeSize :CGFloat = 24.0
        static let closeBtnLeftSpace :CGFloat = 24.0
        static let closeBtnTopSpace :CGFloat = 32.0
        static let workLabelTopSpace :CGFloat = 80.0
        static let lineTopSpace :CGFloat = 20.0
        static let lineLeftSpace :CGFloat = 32.0
        static let lineHeightSpace :CGFloat = 1.0
        static let promptIconTopSpace :CGFloat = 24.0
        static let promptIconWidth :CGFloat = 243.0
        static let promptIconHeight :CGFloat = 401.0
        static let promptTextTopSpace :CGFloat = 69.0
        static let promptTextLeftSpace :CGFloat = 24.0
        //Referral History
        static let historyAvatarLeftSpace :CGFloat = 32.0
        static let historyAvatarTopSpace :CGFloat = 10.0
        static let historyAvatarSize :CGFloat = 30.0
        static let historyNameLeftSpace :CGFloat = 16.0
        static let historyCellHeight :CGFloat = 50.0
        static let historyHeadHeight :CGFloat = 130.0
    }
    
    struct Find {
        static let collectionTopInset :CGFloat = 32.0
        static let collectionLeftInset :CGFloat = 4.0
        static let collectionBottomInset :CGFloat = 16.0
        static let collectionRightInset :CGFloat = 4.0
        static let collectionInteritemSpace :CGFloat = 0.0
        static let collectionItemLineSpace :CGFloat = 8.0
        static let collectionItemWidthSpace :CGFloat = 163.0
        static let collectionItemHeightSpace :CGFloat = 78.0
        static let collectionHeadWidth :CGFloat = AppUIConstant.Common.screenWidth
        static let collectionHeadHeight :CGFloat = 40.0
        static let shadowYOffset :CGFloat = 3.0
        static let indicatorWidth :CGFloat = 80.0
        static let indicatorHeight :CGFloat = 3.0
        static let indicatorLeftSpace :CGFloat = 10.0
        static let indicatorTopSpace :CGFloat = 6.0
        static let selectSize :CGFloat = 20.0
        static let selectImageTopSpace :CGFloat = 12.0
        static let tabItemTopSpace :CGFloat = 24.0
        static let tabIteHeight :CGFloat = 32.0
        static let tabItemLeftSpace :CGFloat = 16.0
        static let tabItemSelectBottomSpace :CGFloat = 9.0
        static let tabItemSelectTopSpace :CGFloat = 4.0
    }
    
    struct ContactUs {
        static let containerCornerRadius :CGFloat = 14.0
        static let containerOffsetX :CGFloat = 0.0
        static let containerOffsetY :CGFloat = 2.0
        static let containerTopSpace :CGFloat = 112.0
        static let containerBottomSpace :CGFloat = 48.0
        static let containerBlur :CGFloat = 20.0
        static let containerAlpha :CGFloat = 0.2
        static let submitWidth :CGFloat = 275.0
        static let submitHeight :CGFloat = 50.0
        static let titleTopSpace :CGFloat = 34.0
        static let tfLeftSpace :CGFloat = 34.0
        static let tfHeightSpace :CGFloat = 50.0
        static let textViewHeight :CGFloat = 200.0
        static let successHeight :CGFloat = 365.0
        static let successIconHeight :CGFloat = 146.0
        static let successIconWidth :CGFloat = 184.0
        static let successMsgLeftSpace :CGFloat = 30.0
        static let successMsgTopSpace :CGFloat = 20.0
    }
    
    struct Menu {
        static let cellHeight :CGFloat = 60.0
        static let cellLeftSpace :CGFloat = 48.0
        static let cellTopSpace :CGFloat = 24.0
        static let cellLabelAndTextSpace :CGFloat = 32.0
        static let headTopHeight :CGFloat = 110.0
        static let headBottomHeight :CGFloat = 66.0
        static let avatarTopSpace :CGFloat = 30.0
        static let avatarLeftSpace :CGFloat = 30.0
        static let avatarBottomSpace :CGFloat = 20.0
        static let avatarWidth :CGFloat = 64.0
        static let iconLeftSpace :CGFloat = 48.0
        static let iconWidth :CGFloat = 24.0
        static let iconAndContentSpace :CGFloat = 32.0
        static let starSize :CGFloat = 15.0
        static let selectViewHeight :CGFloat = 46.0
    }
    
    struct Profile {
        //head
        static let avatarSize :CGFloat = 81.0
        static let avatarTopSpace :CGFloat = 16.0
        static let markSize :CGFloat = 20.0
        static let nameTopSpace :CGFloat = 8.0
        static let tagHeightSpace :CGFloat = 32.0
        static let tagWidthSpace :CGFloat = 108.0
        static let starSize :CGFloat = 15.0
        static let starLabelLeftSpace :CGFloat = 8.0
        static let requestBtnHeight :CGFloat = 50.0
        static let requestBtnBottomSpace :CGFloat = 16.0
        static let levelBottomSpace :CGFloat = 10.0
        static let levelWidth :CGFloat = 108.0
        static let levelHeight :CGFloat = 32.0
        static let tabTopSpace :CGFloat = 6.0
        static let tabHeight :CGFloat = 48.0
        static let tabLineWidth :CGFloat = 120.0
        static let tabLineHeight :CGFloat = 1.0
        static let tabLineTopSpace :CGFloat = 32.0
        static let tabBottomSpace :CGFloat = 16.0
        static let worksLeftEdge :CGFloat = 16.0
        static let worksTopEdge :CGFloat = 16.0
        static let worksBottomEdge :CGFloat = 16.0
        static let worksRightEdge :CGFloat = 16.0
        static let worksMiniItemEdge :CGFloat = 20.0
        static let worksMiniLineEdge :CGFloat = 15.0
        static let worksImageSize :CGFloat = 101.0
        static let middleCellHeight :CGFloat = 60.0
        static let tableviewGroupHeight :CGFloat = 1.0
        static let tableviewHeadHeight :CGFloat = 243.0 - 64
        static let tableviewMiddleCellHeight :CGFloat = 44.0
        static let tableviewBottomHeight :CGFloat = 320.0
        static let indicatorHeight :CGFloat = 10.0
        
    }
    
    struct FindSelect {
        static let closeLeftSpace :CGFloat = 24.0
        static let closeTopSpace :CGFloat = 32.0
        static let closeSize :CGFloat = 24.0
        static let titleTopSpace :CGFloat = 80.0
        static let lineLeftSpace :CGFloat = 60.0
        static let lineTopSpace :CGFloat = 20.0
        static let lineHeight :CGFloat = 1.0
        static let doneBtnHeight :CGFloat = 50.0
        static let doneBtnBottomSpace :CGFloat = 50.0
        static let cellHeight :CGFloat = 64.0
        static let selectIconSize :CGFloat = 25.0
        
    }
    
    struct Map {
        static let arrowWidth :CGFloat = 53.0
        static let arrowHeight :CGFloat = 50.0
        static let arrowTopSpace :CGFloat = 60.0
        static let searchResultDotLeftSpace :CGFloat = 24.0
        static let searchResultDotSize :CGFloat = 8.0
        static let searchResultTextLeftSpace :CGFloat = 22.0
        
        struct JobTracking {
            static let titleTopSpace :CGFloat = 16.0
            static let height :CGFloat = 354.0
            static let tableViewTopSpace :CGFloat = 16.0
            static let dotDefaultSize :CGFloat = 9.0
            static let dotDefaultLeftSpace :CGFloat = 32.0
            static let dotHighlightLeftSpace :CGFloat = 29.0
            static let lineLeftSpace :CGFloat = 36.0
            static let dotHighlightSize :CGFloat = 15.0
            static let titleLeftSpace :CGFloat = 15.0
            static let dateRightSpace :CGFloat = 34.0
            static let btnBottomSpace :CGFloat = 32.0
        }
    }

}


struct AppColorConstant {
    static let styleColor = UIColor("#FF1D8D")
    static let mainNomalTextColor = UIColor.black
    static let mainHighLightTextColor = UIColor.white
    static let grayTextColor = UIColor("#9B9B9B")
    static let newCardBorderColor = UIColor("#D5D5D5")
    static let reCommendBackgroundStarColor = UIColor("#F13CA5")
    static let reCommendBackgroundEndColor = UIColor("#B95ECD")
    static let reCommendInvitationCodeColor = UIColor("#EA41AA")
    static let reCommendIBtnDarkColor = UIColor("#FF1D8D")
    static let darkBlackTextColor = UIColor("#2D2D2D")
    static let codeLabelLineStarColor = UIColor("#EEEEEE")
    static let codeLabelLineEndColor = UIColor("#7B7B7B")
    static let shareOpacityBackgroundColor = UIColor("#000000").withAlphaComponent(0.5)
    //add new card
    static let titleLabelColor = UIColor("#1E1E1E")
    static let styleWhiteColor = UIColor("#FDFDFD")
    static let styleShadowWhiteColor = UIColor("#EEEEEE")
    static let labelTagTextColor = UIColor("#5D5C5A")
    static let policyTextColor = UIColor("#989898")
    static let lightGrayTextColor = UIColor("#CDCDCD")
    //contact us
    static let containerBackgroundColor = UIColor.white.withAlphaComponent(0.89)
    static let containerShadowColor = UIColor("#999999").withAlphaComponent(0.2)
    static let appTextGrayColor = UIColor("#CCCCCC")
    static let appTextViewBackgroundColor = UIColor("#FBFBFB")
    //menu
    static let menuBackgroundStarColor = UIColor("#B163D2")
    static let menuBackgroundEndColor = UIColor("#F33AA3")
    static let menuCellBackgroundColor = UIColor("#C955C2")
    static let menuTextColor = UIColor("#344758")
    
    //profile
    static let tagGradientStartColor = UIColor("#FF9763")
    static let tagGradientEndColor = UIColor("#FF5D8F")
    static let tagGradientBlurColor = UIColor("#FF6788").withAlphaComponent(0.5)
    
    //jobdetail
    static let jobTitleLabelColor = UIColor("#3A3A3A")
    //recommand
    static let recommandLineColor = UIColor("#7CA0DA")
    static let promptLabelColor = UIColor("#292929")
    //history
    static let shadowGrayColor = UIColor("#C4C4C4").withAlphaComponent(0.25)
    //favorites
    static let favoritesBackgroundColor = UIColor("#FEFEFE")
    //find select
    static let findSelectLineColor = UIColor("#77BCE8")
    //map
    static let searchResultTextColor = UIColor("#434B5A")
    static let searchResultDotColor = UIColor("#D8D8D8")
    static let trackLineColor = UIColor("#DEDEDE")
    static let trackDateColor = UIColor("#999999")
    //tag
    
    static let tag1Color :UIColor = UIColor("#FFA292")
    static let tag2Color :UIColor = UIColor("#8FBEFE")
    static let tag3Color :UIColor = UIColor("#A8A7FB")
    static let tag4Color :UIColor = UIColor("#8BD7C3")
    static var randomTagColor: UIColor {
        let array :Array<UIColor> = [tag1Color,tag2Color,tag3Color,tag4Color]
        let index :Int = Int(Int(arc4random())%4)
        return array[index]
    }
    //services line
    static let servicesLine1Color = UIColor("#7CA0DA")
    static let servicesLine2Color = UIColor("#9876E9")
    static let servicesLine3Color = UIColor("#7BE585")
    static let servicesLine4Color = UIColor("#77BCE8")
    static let servicesLine5Color = UIColor("#CE75E9")
    static var randomServicesLineColor: UIColor {
        let array :Array<UIColor> = [servicesLine1Color,servicesLine2Color,servicesLine3Color,servicesLine4Color,servicesLine5Color]
        let index :Int = Int(Int(arc4random())%4)
        return array[index]
    }
}

struct AppFontSizeConstant {
    static let huge = 32
    static let larger = 26
    static let large = 22
    static let big = 20
    static let big01 = 18
    static let middle = 16
    static let small = 14
    static let little = 12
    static let mini = 11
}

struct FourCycleColors {
    private let randomColors = [UIColor.init(hex6: 0xFFA292),
                        UIColor.init(hex6: 0x8FBEFE),
                        UIColor.init(hex6: 0x87D1BE),
                        UIColor.init(hex6: 0xA8A7FB)]

    func colorFor(index : UInt) -> UIColor {
        if !randomColors.isEmpty {
            return randomColors[Int(index) % randomColors.count]
        }
        return randomColors.first!
    }
}
