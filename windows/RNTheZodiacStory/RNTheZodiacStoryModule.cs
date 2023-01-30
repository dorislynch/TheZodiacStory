using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Zodiac.Story.RNTheZodiacStory
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTheZodiacStoryModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTheZodiacStoryModule"/>.
        /// </summary>
        internal RNTheZodiacStoryModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTheZodiacStory";
            }
        }
    }
}
