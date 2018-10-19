//
//  LoginAuthenticationManager.swift
//  MYCHS
//
//  Created by Swapnil Katkar on 15/10/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import Foundation
class LoginAuthenticationManager : NSObject
{
    /*class func authenticateUserFor(request:String ,completed:@escaping((Result<BeerMapper, ServerError>) -> Void))
    {
        ServerManager.getRequestfor(urlString: request){ (result) in
            switch result
            {
            case .success(let response):
                
                guard let responseDict = response.dictionaryObject else {
                    //completed(.failure(.unknownError(message: NO_DATA_ERROR, statusCode: 000)))
                    return
                }
                guard let success = responseDict["IsStatus"] as? Bool else {
                   // completed(.failure(.unknownError(message: UnknownError, statusCode: 000)))
                    return
                }
                if success
                {
                    let BeerMapperResult  = BeerMapper(dict: responseDict)
                    completed(.success(BeerMapperResult))
                    
                }
                else
                {
                    completed(.failure(.unknownError(message: NO_DATA_ERROR, statusCode: 000)))
                }
                break
            case .failure(let error):
                completed(.failure(error))
                break
            }
        }
    }*/
}
