//
//  CIViewControllerPartenaires.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CIViewControllerPartenaires.h"
#import "IIViewDeckController.h"
#import "CIViewControllerPartnerview.h"

@interface CIViewControllerPartenaires ()

@end

@implementation CIViewControllerPartenaires
{
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *partnerData = @[
    @{@"name" : @"Domino's", @"img" : @"img1.png", @"description" : @"La pizza 4 personnes à 8€ en livraison à partir de 10 commandes. Contactez nous 48h avant avec votre liste de pizzas et nous commanderons pour vous ! Domino's Rue des pyrénées."},
        @{@"name" : @"Golden voyages", @"img" : @"img2.png", @"description" : @"C'est grâce à eux que nous vous proposons tous ces voyages !"},
        @{@"name" : @"Area Box", @"img" : @"img3.png", @"description" : @"Area Box est une agence de communication événementielle, de promotion d’événements et spectacles vivants, située dans le 10éme arrondissement de Paris. Notre agence est à votre écoute pour concevoir et mettre en place tous vos projets."},
    @{@"name" : @"Spotify", @"img" : @"img4.png", @"description" : @"Inscrivez-vous, il y a plein de lots à gagner ^^ Création de compte ici : http://www.spotify.com/fr/start"},
    ];
    
    CGSize scrollViewSize = CGSizeMake(self.scrollPartners.bounds.size.width, 0);
    NSInteger i = 0;
    for (NSDictionary *d in partnerData)
    {
        CIViewControllerPartnerview *vc = [[CIViewControllerPartnerview alloc] initWithNibName:@"CIViewControllerPartnerview" bundle:nil];    

        [vc.view setFrame:CGRectMake(vc.view.frame.origin.x + floor((self.scrollPartners.bounds.size.width - vc.view.frame.size.width) / 2.f), vc.view.frame.origin.y + scrollViewSize.height + 8, vc.view.frame.size.width, vc.view.frame.size.height)];
        
        [vc.view setTag:i++];
        [self.scrollPartners addSubview:vc.view];
        [vc.titlePartner setFont:[UIFont fontWithName:@"freeversionSketchBlock-Bold" size:26.0]];
        [vc.titlePartner setText:d[@"name"]];
        [vc.imgPartner setImage:[UIImage imageNamed:d[@"img"]]];
        [vc.contentPartner setText:d[@"description"]];
        
        scrollViewSize.height += vc.view.frame.size.height + 8;
    }
    
    [self.scrollPartners setContentSize:scrollViewSize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}


- (void)viewDidUnload {
    [self setScrollPartners:nil];
    [self setViewPartners:nil];
    [self setLabelPartners:nil];
    [super viewDidUnload];
}


@end
